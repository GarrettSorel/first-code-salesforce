public class ContactSearch {
    public static List<Contact> searchForContacts (String last, String zip) {
        List<Contact> cts = [SELECT LastName,MailingPostalCode FROM Contact WHERE LastName=:last AND MailingPostalCode=:zip];
        return cts;
    }
}
