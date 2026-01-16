"""
Return a `DataFrame`, containing the NATOPS dataset, encoded as the `.arff` file
`arffstring`.
"""
function parse_natops(arffstring::String)
    df = DataFrame()
    classes = String[]

    lines = split(arffstring, "\n")
    for i in 1:length(lines)
        line = lines[i]

        # split the current line;
        # if it is not a data line, starting with DATA_MARK, continue;
        # continue even in the case where checking the first character
        # throwed out an error.
        sline = nothing
        try
            sline = split(line, " ")
            if sline[1][1] != '\''
                continue
            end
        catch
            continue
        end

        # skip the initial hypen an read the data
        sline[1] = sline[1][2:end]
        data_and_class = split(sline[1], "\'")
        string_data = split(data_and_class[1], "\\n")
        class = data_and_class[2][2:end]

        if isempty(names(df))
            for i in 1:length(string_data)
                insertcols!(df, Symbol("V$(i)") => Array{Float64, 1}[])
            end
        end

        float_data = Dict{Int,Vector{Float64}}()

        for i in 1:length(string_data)
            float_data[i] = map(x->parse(Float64,x), split(string_data[i], ","))
        end

        push!(df, [float_data[i] for i in 1:length(string_data)])
        push!(classes, class)

    end

    p = sortperm(eachrow(df), by=x->classes[rownumber(x)])

    return df[p, :], classes[p]
end
