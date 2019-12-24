public class ContactTriggerHandler extends TriggerHandler {

    public override void afterInsert() {
        ContactTriggerHelper.countContacts(Trigger.new);
    }

    public override void afterUpdate() {
        ContactTriggerHelper.countContacts(Trigger.new);
    }

    public override void afterDelete() {
        ContactTriggerHelper.countContacts(Trigger.old);
    }

    public override void afterUndelete() {
        ContactTriggerHelper.countContacts(Trigger.new);
    }
}