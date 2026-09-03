.class Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia$1;
.super Lcom/zte/activityevent/IActivityEventsCallbackNubia$Stub;
.source "ActivityEventsManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;


# direct methods
.method constructor <init>(Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia$1;->this$0:Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;

    invoke-direct {p0}, Lcom/zte/activityevent/IActivityEventsCallbackNubia$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifiyActivityEventNubia(Ljava/lang/String;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia$1;->this$0:Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;

    invoke-virtual {p0, p1}, Lcom/zte/activityevent/ActivityEventsManagerWrapper$CallbackNubia;->onActivityEvent(Ljava/lang/String;)V

    return-void
.end method
