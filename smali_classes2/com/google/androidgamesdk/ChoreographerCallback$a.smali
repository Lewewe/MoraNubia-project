.class Lcom/google/androidgamesdk/ChoreographerCallback$a;
.super Ljava/lang/Thread;
.source "ChoreographerCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidgamesdk/ChoreographerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/androidgamesdk/ChoreographerCallback;


# direct methods
.method private constructor <init>(Lcom/google/androidgamesdk/ChoreographerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/google/androidgamesdk/ChoreographerCallback$a;->this$0:Lcom/google/androidgamesdk/ChoreographerCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/androidgamesdk/ChoreographerCallback;Lcom/google/androidgamesdk/ChoreographerCallback$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/androidgamesdk/ChoreographerCallback$a;-><init>(Lcom/google/androidgamesdk/ChoreographerCallback;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 53
    const-string v0, "Starting looper thread"

    const-string v1, "ChoreographerCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/androidgamesdk/ChoreographerCallback$a;->a:Landroid/os/Handler;

    .line 56
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 57
    const-string p0, "Terminating looper thread"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
