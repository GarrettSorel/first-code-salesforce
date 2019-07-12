public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads (String name) {
        List<List<SObject>> searchList = [FIND 'Smith' IN ALL FIELDS
                                          RETURNING Lead(FirstName, LastName), Contact(FirstName, LastName)];
        return searchList;
    }
}
