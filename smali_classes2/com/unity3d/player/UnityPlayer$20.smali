.class Lcom/unity3d/player/UnityPlayer$20;
.super Lcom/unity3d/player/UnityPlayer$f;
.source "UnityPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->reportSoftInputArea(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;

.field final synthetic val$var1:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 962
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$20;->this$0:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$20;->val$var1:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$f;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer$1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 964
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$20;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$20;->val$var1:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$20;->val$var1:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer$20;->val$var1:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$20;->val$var1:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/unity3d/player/UnityPlayer;->access$2400(Lcom/unity3d/player/UnityPlayer;IIII)V

    return-void
.end method
