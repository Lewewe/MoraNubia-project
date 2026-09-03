.class Lcom/google/androidgamesdk/SwappyDisplayManager$a;
.super Ljava/lang/Thread;
.source "SwappyDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidgamesdk/SwappyDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field private c:Ljava/util/concurrent/locks/Lock;

.field private d:Ljava/util/concurrent/locks/Condition;

.field final synthetic this$0:Lcom/google/androidgamesdk/SwappyDisplayManager;


# direct methods
.method private constructor <init>(Lcom/google/androidgamesdk/SwappyDisplayManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/google/androidgamesdk/SwappyDisplayManager$a;->this$0:Lcom/google/androidgamesdk/SwappyDisplayManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 145
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/androidgamesdk/SwappyDisplayManager$a;->c:Ljava/util/concurrent/locks/Lock;

    .line 146
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/androidgamesdk/SwappyDisplayManager$a;->d:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/androidgamesdk/SwappyDisplayManager;Lcom/google/androidgamesdk/SwappyDisplayManager$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/google/androidgamesdk/SwappyDisplayManager$a;-><init>(Lcom/google/androidgamesdk/SwappyDisplayManager;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 163
    const-string v0, "Starting looper thread"

    const-string v1, "SwappyDisplayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/google/androidgamesdk/SwappyDisplayManager$a;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 165
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/androidgamesdk/SwappyDisplayManager$a;->a:Landroid/os/Handler;

    .line 167
    iget-object v0, p0, Lcom/google/androidgamesdk/SwappyDisplayManager$a;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 168
    iget-object p0, p0, Lcom/google/androidgamesdk/SwappyDisplayManager$a;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 169
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 170
    const-string p0, "Terminating looper thread"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final start()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/androidgamesdk/SwappyDisplayManager$a;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 151
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/google/androidgamesdk/SwappyDisplayManager$a;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 159
    :goto_0
    iget-object p0, p0, Lcom/google/androidgamesdk/SwappyDisplayManager$a;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
