#!/bin/bash

/storage/compevolbiol/software/Maker/maker/bin/maker2zff -n -d av-canu-pilon.maker.output/av-canu-pilon_master_datastore_index.log
#!/bin/bash

/storage/compevolbiol/software/Maker/maker/bin/fasta_merge -d av-canu-pilon.maker.output/av-canu-pilon_master_datastore_index.log
#!/bin/bash
/storage/compevolbiol/software/Maker/maker/bin/gff3_merge -d av-canu-pilon.maker.output/av-canu-pilon_master_datastore_index.log
