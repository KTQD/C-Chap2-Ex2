echo
echo "Running tests..."
echo

echo "####################################################################################################"
# Đặt đầu vào cho chương trình
input="5 37"
# Chạy chương trình và lưu kết quả vào biến output
output=$(echo $input | ./a.out)

# Định nghĩa output mong muốn cho từng phần
expected_output1="Input hours:"
expected_output2="Input minutes:"
expected_output3="Total: 337 minutes."

# Kiểm tra expected_output1 và xoá khỏi output
if echo "$output" | grep -q "$expected_output1"; then
echo "Expected: '$expected_output1', Passed"
else
echo "Expected: '$expected_output1', but got: $output"
exit 1
fi
output=$(echo "$output" | sed "s/$expected_output1//")

# Kiểm tra expected_output_2 và xoá khỏi output
if echo "$output" | grep -q "$expected_output2"; then
echo "Expected: '$expected_output2', Passed"
else
echo "Expected: '$expected_output2', but got: $output"
exit 1
fi
output=$(echo "$output" | sed "s/$expected_output2//")

echo $input
# Kiểm tra expected_output_3 và xoá khỏi output
if echo "$output" | grep -q "$expected_output3"; then
echo "Expected: '$expected_output3', Passed"
else
echo "Expected: '$expected_output3', but got: $output"
exit 1
fi

echo "####################################################################################################"
# Đặt đầu vào cho chương trình
input="0 37"
# Chạy chương trình và lưu kết quả vào biến output
output=$(echo $input | ./a.out)

# Định nghĩa output mong muốn cho từng phần
expected_output1="Input hours:"
expected_output2="Input minutes:"
expected_output3="Total: 37 minutes."

# Kiểm tra expected_output1 và xoá khỏi output
if echo "$output" | grep -q "$expected_output1"; then
echo "Expected: '$expected_output1', Passed"
else
echo "Expected: '$expected_output1', but got: $output"
exit 1
fi
output=$(echo "$output" | sed "s/$expected_output1//")

# Kiểm tra expected_output_2 và xoá khỏi output
if echo "$output" | grep -q "$expected_output2"; then
echo "Expected: '$expected_output2', Passed"
else
echo "Expected: '$expected_output2', but got: $output"
exit 1
fi
output=$(echo "$output" | sed "s/$expected_output2//")

echo $input
# Kiểm tra expected_output_3 và xoá khỏi output
if echo "$output" | grep -q "$expected_output3"; then
echo "Expected: '$expected_output3', Passed"
else
echo "Expected: '$expected_output3', but got: $output"
exit 1
fi

echo "####################################################################################################"

echo "All tests passed."
echo