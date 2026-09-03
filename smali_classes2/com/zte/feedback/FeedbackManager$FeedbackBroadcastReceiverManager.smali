.class Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/feedback/FeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedbackBroadcastReceiverManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;
    }
.end annotation


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/feedback/FeedbackManager;


# direct methods
.method private constructor <init>(Lcom/zte/feedback/FeedbackManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;->this$0:Lcom/zte/feedback/FeedbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;->map:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/feedback/FeedbackManager;Lcom/zte/feedback/FeedbackManager$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;-><init>(Lcom/zte/feedback/FeedbackManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;Landroid/content/Context;Lcom/zte/feedback/FeedbackCallback;)Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;->registerBroadcastReceiver(Landroid/content/Context;Lcom/zte/feedback/FeedbackCallback;)Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;->unregisterBroadcastReceiver(Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;)V

    return-void
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;Lcom/zte/feedback/FeedbackCallback;)Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;
    .locals 2

    .line 107
    new-instance v0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;

    invoke-direct {v0, p0, p2}, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;-><init>(Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;Lcom/zte/feedback/FeedbackCallback;)V

    .line 108
    iget-object p0, p0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;->map:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    const-string p2, "com.zte.aifeedback.ACTION_SEND_COMPLETED"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p2, v1, :cond_0

    const/4 p2, 0x2

    .line 112
    invoke-virtual {p1, v0, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method private unregisterBroadcastReceiver(Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;)V
    .locals 2

    .line 123
    iget-object p0, p0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;->map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 124
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method
