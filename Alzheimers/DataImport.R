library(dplyr)
library(GEOquery)

gse <- getGEO("GSE36980", filename = "GSE36980_family.soft")

data_platform <- gse@gpls$GPL6244@dataTable@table

data_ad_792 <- gse@gsms$GSM907792@dataTable@table
data_ad_793 <- gse@gsms$GSM907793@dataTable@table
data_ad_794 <- gse@gsms$GSM907794@dataTable@table
data_ad_795 <- gse@gsms$GSM907795@dataTable@table
data_ad_796 <- gse@gsms$GSM907796@dataTable@table
data_ad_797 <- gse@gsms$GSM907797@dataTable@table
data_ad_798 <- gse@gsms$GSM907798@dataTable@table
data_ad_799 <- gse@gsms$GSM907799@dataTable@table
data_ad_800 <- gse@gsms$GSM907800@dataTable@table
data_ad_801 <- gse@gsms$GSM907801@dataTable@table
data_ad_802 <- gse@gsms$GSM907802@dataTable@table
data_ad_803 <- gse@gsms$GSM907803@dataTable@table
data_ad_804 <- gse@gsms$GSM907804@dataTable@table
data_ad_805 <- gse@gsms$GSM907805@dataTable@table
data_ad_806 <- gse@gsms$GSM907806@dataTable@table

data_ad_825 <- gse@gsms$GSM907825@dataTable@table
data_ad_826 <- gse@gsms$GSM907826@dataTable@table
data_ad_827 <- gse@gsms$GSM907827@dataTable@table
data_ad_828 <- gse@gsms$GSM907828@dataTable@table
data_ad_829 <- gse@gsms$GSM907829@dataTable@table
data_ad_830 <- gse@gsms$GSM907830@dataTable@table
data_ad_831 <- gse@gsms$GSM907831@dataTable@table
data_ad_832 <- gse@gsms$GSM907832@dataTable@table
data_ad_833 <- gse@gsms$GSM907833@dataTable@table
data_ad_834 <- gse@gsms$GSM907834@dataTable@table

data_ad_854 <- gse@gsms$GSM907854@dataTable@table
data_ad_855 <- gse@gsms$GSM907855@dataTable@table
data_ad_856 <- gse@gsms$GSM907856@dataTable@table
data_ad_857 <- gse@gsms$GSM907857@dataTable@table
data_ad_858 <- gse@gsms$GSM907858@dataTable@table
data_ad_859 <- gse@gsms$GSM907859@dataTable@table
data_ad_860 <- gse@gsms$GSM907860@dataTable@table

data_non_ad_807 <- gse@gsms$GSM907807@dataTable@table
data_non_ad_808 <- gse@gsms$GSM907808@dataTable@table
data_non_ad_809 <- gse@gsms$GSM907809@dataTable@table
data_non_ad_810 <- gse@gsms$GSM907810@dataTable@table
data_non_ad_811 <- gse@gsms$GSM907811@dataTable@table
data_non_ad_812 <- gse@gsms$GSM907812@dataTable@table
data_non_ad_813 <- gse@gsms$GSM907813@dataTable@table
data_non_ad_814 <- gse@gsms$GSM907814@dataTable@table
data_non_ad_815 <- gse@gsms$GSM907815@dataTable@table
data_non_ad_816 <- gse@gsms$GSM907816@dataTable@table
data_non_ad_817 <- gse@gsms$GSM907817@dataTable@table
data_non_ad_818 <- gse@gsms$GSM907818@dataTable@table
data_non_ad_819 <- gse@gsms$GSM907819@dataTable@table
data_non_ad_820 <- gse@gsms$GSM907820@dataTable@table
data_non_ad_821 <- gse@gsms$GSM907821@dataTable@table
data_non_ad_822 <- gse@gsms$GSM907822@dataTable@table
data_non_ad_823 <- gse@gsms$GSM907823@dataTable@table
data_non_ad_824 <- gse@gsms$GSM907824@dataTable@table

data_non_ad_835 <- gse@gsms$GSM907835@dataTable@table
data_non_ad_836 <- gse@gsms$GSM907836@dataTable@table
data_non_ad_837 <- gse@gsms$GSM907837@dataTable@table
data_non_ad_838 <- gse@gsms$GSM907838@dataTable@table
data_non_ad_839 <- gse@gsms$GSM907839@dataTable@table
data_non_ad_840 <- gse@gsms$GSM907840@dataTable@table
data_non_ad_841 <- gse@gsms$GSM907841@dataTable@table
data_non_ad_842 <- gse@gsms$GSM907842@dataTable@table
data_non_ad_843 <- gse@gsms$GSM907843@dataTable@table
data_non_ad_844 <- gse@gsms$GSM907844@dataTable@table
data_non_ad_845 <- gse@gsms$GSM907845@dataTable@table
data_non_ad_846 <- gse@gsms$GSM907846@dataTable@table
data_non_ad_847 <- gse@gsms$GSM907847@dataTable@table
data_non_ad_848 <- gse@gsms$GSM907848@dataTable@table
data_non_ad_849 <- gse@gsms$GSM907849@dataTable@table
data_non_ad_850 <- gse@gsms$GSM907850@dataTable@table
data_non_ad_851 <- gse@gsms$GSM907851@dataTable@table
data_non_ad_852 <- gse@gsms$GSM907852@dataTable@table
data_non_ad_853 <- gse@gsms$GSM907853@dataTable@table

data_non_ad_861 <- gse@gsms$GSM907861@dataTable@table
data_non_ad_862 <- gse@gsms$GSM907862@dataTable@table
data_non_ad_863 <- gse@gsms$GSM907863@dataTable@table
data_non_ad_864 <- gse@gsms$GSM907864@dataTable@table
data_non_ad_865 <- gse@gsms$GSM907865@dataTable@table
data_non_ad_866 <- gse@gsms$GSM907866@dataTable@table
data_non_ad_867 <- gse@gsms$GSM907867@dataTable@table
data_non_ad_868 <- gse@gsms$GSM907868@dataTable@table
data_non_ad_869 <- gse@gsms$GSM907869@dataTable@table
data_non_ad_870 <- gse@gsms$GSM907870@dataTable@table


data_ad <- data_ad_792 %>%
  inner_join(data_ad_793, by = "ID_REF") %>%
  inner_join(data_ad_794, by = "ID_REF") %>%
  inner_join(data_ad_795, by = "ID_REF") %>%
  inner_join(data_ad_796, by = "ID_REF") %>%
  inner_join(data_ad_797, by = "ID_REF") %>%
  inner_join(data_ad_798, by = "ID_REF") %>%
  inner_join(data_ad_799, by = "ID_REF") %>%
  inner_join(data_ad_800, by = "ID_REF") %>%
  inner_join(data_ad_801, by = "ID_REF") %>%
  inner_join(data_ad_802, by = "ID_REF") %>%
  inner_join(data_ad_803, by = "ID_REF") %>%
  inner_join(data_ad_804, by = "ID_REF") %>%
  inner_join(data_ad_805, by = "ID_REF") %>%
  inner_join(data_ad_806, by = "ID_REF") %>%
  inner_join(data_ad_825, by = "ID_REF") %>%
  inner_join(data_ad_826, by = "ID_REF") %>%
  inner_join(data_ad_827, by = "ID_REF") %>%
  inner_join(data_ad_828, by = "ID_REF") %>%
  inner_join(data_ad_829, by = "ID_REF") %>%
  inner_join(data_ad_830, by = "ID_REF") %>%
  inner_join(data_ad_831, by = "ID_REF") %>%
  inner_join(data_ad_832, by = "ID_REF") %>%
  inner_join(data_ad_833, by = "ID_REF") %>%
  inner_join(data_ad_834, by = "ID_REF") %>%
  inner_join(data_ad_854, by = "ID_REF") %>%
  inner_join(data_ad_855, by = "ID_REF") %>%
  inner_join(data_ad_856, by = "ID_REF") %>%
  inner_join(data_ad_857, by = "ID_REF") %>%
  inner_join(data_ad_858, by = "ID_REF") %>%
  inner_join(data_ad_859, by = "ID_REF") %>%
  inner_join(data_ad_860, by = "ID_REF")

colnames(data_ad) <- c("ID_REF", "792",
                          "793", "794", "795",
                          "796", "797", "798",
                          "799", "800", "801",
                          "802", "803", "804",
                          "805", "806", "825",
                          "826", "827", "828",
                          "829", "830", "831",
                          "832", "833", "834",
                          "854", "855", "856",
                          "857", "858", "859", "860")

data_non_ad <- data_non_ad_807 %>%
  inner_join(data_non_ad_808, by = "ID_REF") %>%
  inner_join(data_non_ad_809, by = "ID_REF") %>%
  inner_join(data_non_ad_810, by = "ID_REF") %>%
  inner_join(data_non_ad_811, by = "ID_REF") %>%
  inner_join(data_non_ad_812, by = "ID_REF") %>%
  inner_join(data_non_ad_813, by = "ID_REF") %>%
  inner_join(data_non_ad_814, by = "ID_REF") %>%
  inner_join(data_non_ad_815, by = "ID_REF") %>%
  inner_join(data_non_ad_816, by = "ID_REF") %>%
  inner_join(data_non_ad_817, by = "ID_REF") %>%
  inner_join(data_non_ad_818, by = "ID_REF") %>%
  inner_join(data_non_ad_819, by = "ID_REF") %>%
  inner_join(data_non_ad_820, by = "ID_REF") %>%
  inner_join(data_non_ad_821, by = "ID_REF") %>%
  inner_join(data_non_ad_822, by = "ID_REF") %>%
  inner_join(data_non_ad_823, by = "ID_REF") %>%
  inner_join(data_non_ad_824, by = "ID_REF") %>%
  inner_join(data_non_ad_835, by = "ID_REF") %>%
  inner_join(data_non_ad_836, by = "ID_REF") %>%
  inner_join(data_non_ad_837, by = "ID_REF") %>%
  inner_join(data_non_ad_838, by = "ID_REF") %>%
  inner_join(data_non_ad_839, by = "ID_REF") %>%
  inner_join(data_non_ad_840, by = "ID_REF") %>%
  inner_join(data_non_ad_841, by = "ID_REF") %>%
  inner_join(data_non_ad_842, by = "ID_REF") %>%
  inner_join(data_non_ad_843, by = "ID_REF") %>%
  inner_join(data_non_ad_844, by = "ID_REF") %>%
  inner_join(data_non_ad_845, by = "ID_REF") %>%
  inner_join(data_non_ad_846, by = "ID_REF") %>%
  inner_join(data_non_ad_847, by = "ID_REF") %>%
  inner_join(data_non_ad_848, by = "ID_REF") %>%
  inner_join(data_non_ad_849, by = "ID_REF") %>%
  inner_join(data_non_ad_850, by = "ID_REF") %>%
  inner_join(data_non_ad_851, by = "ID_REF") %>%
  inner_join(data_non_ad_852, by = "ID_REF") %>%
  inner_join(data_non_ad_853, by = "ID_REF") %>%
  inner_join(data_non_ad_861, by = "ID_REF") %>%
  inner_join(data_non_ad_862, by = "ID_REF") %>%
  inner_join(data_non_ad_863, by = "ID_REF") %>%
  inner_join(data_non_ad_864, by = "ID_REF") %>%
  inner_join(data_non_ad_865, by = "ID_REF") %>%
  inner_join(data_non_ad_866, by = "ID_REF") %>%
  inner_join(data_non_ad_867, by = "ID_REF") %>%
  inner_join(data_non_ad_868, by = "ID_REF") %>%
  inner_join(data_non_ad_869, by = "ID_REF") %>%
  inner_join(data_non_ad_870, by = "ID_REF")
  
  
colnames(data_non_ad) <- c("ID_REF", "807", "808",
                              "809", "810", "811",
                              "812", "813", "814",
                              "815", "816", "817",
                              "818", "819", "820",
                              "821", "822", "823",
                              "824", "835", "836",
                              "837", "838", "839",
                              "840", "841", "842",
                              "843", "844", "845",
                              "846", "847", "848",
                              "849", "850", "851",
                              "852", "853", "861",
                              "862", "863", "864",
                              "865", "866", "867",
                              "868", "869", "870")

write.csv(data_platform, "data_platform.csv", row.names = FALSE)
write.csv(data_ad, "data_ad.csv", row.names = FALSE)
write.csv(data_non_ad, "data_non_ad.csv", row.names = FALSE)
