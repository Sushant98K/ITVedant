fetchDataFromServer(function (error, data) {
  if (error) {
    console.log("Server failed, trying fallback...");
    // Attempt a fallback operation
    fetchDataFromBackupServer(function (error, backupData) {
      if (error) {
        console.error("Both servers failed:", error.message);
        return;
      }
      console.log("Backup server data:", backupData);
    });
    return;
  }
  console.log("Primary server data:", data);
});
