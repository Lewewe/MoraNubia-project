.class Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback$1;
.super Lcom/zte/activityevent/IActivityEventsCallback$Stub;
.source "ActivityEventsManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;


# direct methods
.method constructor <init>(Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback$1;->this$0:Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;

    invoke-direct {p0}, Lcom/zte/activityevent/IActivityEventsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifiyActivityEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback$1;->this$0:Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;->onActivityEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
