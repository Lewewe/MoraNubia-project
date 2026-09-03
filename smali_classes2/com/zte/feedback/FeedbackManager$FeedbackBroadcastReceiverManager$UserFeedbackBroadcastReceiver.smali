.class Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserFeedbackBroadcastReceiver"
.end annotation


# instance fields
.field private feedbackCallback:Lcom/zte/feedback/FeedbackCallback;

.field final synthetic this$1:Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;


# direct methods
.method public constructor <init>(Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;Lcom/zte/feedback/FeedbackCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;->this$1:Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;->feedbackCallback:Lcom/zte/feedback/FeedbackCallback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "FeedbackManager"

    const-string v1, "onReceive action={}"

    invoke-static {v0, v1, p1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const-string p1, "com.zte.aifeedback.ACTION_SEND_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    const-string p1, "aiFeedbackCompleted"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onReceive: aiFeedbackCompleted: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;->feedbackCallback:Lcom/zte/feedback/FeedbackCallback;

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;->this$1:Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;

    invoke-static {p1, p0}, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;->access$200(Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;)V

    .line 159
    iget-object p0, p0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;->feedbackCallback:Lcom/zte/feedback/FeedbackCallback;

    invoke-interface {p0}, Lcom/zte/feedback/FeedbackCallback;->onFeedbackCompleted()V

    :cond_0
    return-void
.end method
