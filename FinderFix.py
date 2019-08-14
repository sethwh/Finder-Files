# For use with JDA Direct Commerce - Ecometry Open Systems.
# This script will prepare a vendor finder file for clean import.
# See README.md for detailed instructions.

# I/O files
file_in = open('infile.txt', 'r')
file_out = open('output.txt', 'a')

# Split fields
for line in file_in:
    fields = line.split('|')

    #Enfornce column constraints. Strip right white space.
    print(fields[0][:10].rstrip() + "|" +
          fields[1][:30].rstrip() + "|" +
          fields[2][:16].rstrip() + "|" +
          fields[3][:2].rstrip() + "|" +
          fields[4][:16].rstrip() + "|" +
          fields[5][:8].rstrip() + "|" +
          fields[6][:30].rstrip() + "|" +
          fields[7][:30].rstrip() + "|" +
          fields[8][:30].rstrip() + "|" +
          fields[9][:30].rstrip() + "|" +
          fields[10][:2].rstrip() + "|" +
          fields[11][:10].rstrip() + "|" +
          fields[12][:14].rstrip() + "|" +
          fields[13][:14].rstrip() + "|" +
          fields[14][:4].rstrip() + "|" +
          fields[15][:8].rstrip() + "|" +
          fields[16][:16].rstrip() + "|" +
          fields[17][:2].rstrip() + "|" +
          fields[18][:2].rstrip() + "|" +
          fields[19][:4].rstrip() + "|" +
          fields[20][:20].rstrip() + "|",
          file = file_out)

# Close I/O files
file_in.close()
file_out.close()
