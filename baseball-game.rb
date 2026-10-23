# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
    stack = []

    operations.each do |op|
      case op
      when "+"
        stack.push(stack[-1] + stack[-2])
      when "C"
        stack.pop
      when "D"
        stack.push(stack[-1] * 2)
      else
        stack.push op.to_i
      end


    end

    stack.sum
end


p cal_points(["5","-2","4","C","D","9","+","+"])

