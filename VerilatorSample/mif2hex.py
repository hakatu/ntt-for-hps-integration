import argparse

def mif_to_hex(input_mif_file, output_hex_file):
    # try:
        with open(input_mif_file, 'r') as mif_file, open(output_hex_file, 'w') as hex_file:
            for line in mif_file:
                # Remove leading and trailing whitespace
                line = line.strip()

                # Check if the line starts with the keyword "WIDTH"
                if line.startswith("DEPTH"):
                    continue
                if line.startswith("WIDTH"):
                    width = int(line.split()[2].strip(';'))
                    if width % 4 != 0:
                        raise ValueError("Unsupported data width (not a multiple of 4).")
                elif line.startswith("ADDRESS_RADIX"):
                    address_radix = line.split()[2].strip(';')
                elif line.startswith("DATA_RADIX"):
                    data_radix = line.split()[2].strip(';')
                elif line.startswith("CONTENT"):
                    continue
                elif line.startswith("END;"):
                    pass
                elif line == "":
                    continue
                else:
                    # Split the line into address and data parts
                    address, data = line.strip(';').split(':')
                    address = int(address, base=16)
                    data = int(data, base=16)

                    # Write the HEX record to the output file
                    hex_file.write("{:02X}\n".format(data))

    # except FileNotFoundError:
    #     print(f"File not found: {input_mif_file}")
    # except Exception as e:
    #     print(f"An error occurred: {str(e)}")

def main():
    parser = argparse.ArgumentParser(description="Convert a MIF file to a HEX file")
    parser.add_argument("input_mif_file", help="Input MIF file to convert")
    parser.add_argument("output_hex_file", help="Output HEX file to create")

    args = parser.parse_args()
    input_mif_file = args.input_mif_file
    output_hex_file = args.output_hex_file

    mif_to_hex(input_mif_file, output_hex_file)
    print(f"Conversion complete. HEX file saved as {output_hex_file}")

if __name__ == "__main__":
    main()
