val filePath = "hdfs://localhost:9000/user/xjoex/Elon2122Full.csv"
val dfReader = spark.read.format("csv")
val dfWithOptions = dfReader.option("header", "true").option("inferSchema", "true")
val df = dfWithOptions.load(filePath)
df.show(20)
val cleanedDF = df.dropDuplicates()
import org.apache.spark.sql.functions._
val processedDF = df.withColumn("cleaned_text", regexp_replace(col("Tweet"), "[^a-zA-Z0-9\\s]", ""))
processedDF  .withColumn("cleaned_text", lower(col("cleaned_text")))
val dfWithoutNA = processedDF.na.drop()
dfWithoutNA.show(20)
val dfWithoutTweet = dfWithoutNA.drop("Tweet")
dfWithoutTweet.show(20)
val renamedDF = dfWithoutTweet.withColumnRenamed("cleaned_text", "Tweet")
renamedDF.show(20)
val renamedDF = dfWithoutTweet.withColumnRenamed("cleaned_text", "Tweet")
renamedDF.show(20)
import org.apache.spark.sql.functions._
val shiftedDF = renamedDF.select(col("UMID"), col("Date"), col("Tweet"), col("Likes"))
shiftedDF.show(20)
shiftedDF.write
res7  .format("csv")
res8  .mode("overwrite")
res9  .save("hdfs://localhost:9000/user/xjoex/preprocessedsparkelon2122.csv")
