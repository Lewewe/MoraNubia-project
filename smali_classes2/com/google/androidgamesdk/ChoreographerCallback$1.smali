.class Lcom/google/androidgamesdk/ChoreographerCallback$1;
.super Ljava/lang/Object;
.source "ChoreographerCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/androidgamesdk/ChoreographerCallback;->postFrameCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/androidgamesdk/ChoreographerCallback;


# direct methods
.method constructor <init>(Lcom/google/androidgamesdk/ChoreographerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/google/androidgamesdk/ChoreographerCallback$1;->this$0:Lcom/google/androidgamesdk/ChoreographerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 27
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/google/androidgamesdk/ChoreographerCallback$1;->this$0:Lcom/google/androidgamesdk/ChoreographerCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
