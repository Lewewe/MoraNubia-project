.class Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback$1;
.super Lcom/zte/activityevent/IActivityInnerListenerCallback$Stub;
.source "ActivityEventsManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;


# direct methods
.method constructor <init>(Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback$1;->this$0:Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;

    invoke-direct {p0}, Lcom/zte/activityevent/IActivityInnerListenerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyActivityEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback$1;->this$0:Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/zte/activityevent/ActivityEventsManagerWrapper$InnerCallback;->onActivityEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method
