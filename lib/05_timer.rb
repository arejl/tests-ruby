def time_string(t)
    h=t/3600
    m=t/60%60
    s=t%60
    return [h,m,s].map{|i| i.to_s.rjust(2,'0')}.join(':')
end
