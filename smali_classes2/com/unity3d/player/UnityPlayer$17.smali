.class Lcom/unity3d/player/UnityPlayer$17;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->setSelection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;

.field final synthetic val$var1:I

.field final synthetic val$var2:I


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 918
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$17;->this$0:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$17;->val$var1:I

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$17;->val$var2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/l;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/l;

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$17;->val$var1:I

    iget p0, p0, Lcom/unity3d/player/UnityPlayer$17;->val$var2:I

    invoke-virtual {v0, v1, p0}, Lcom/unity3d/player/l;->a(II)V

    :cond_0
    return-void
.end method
