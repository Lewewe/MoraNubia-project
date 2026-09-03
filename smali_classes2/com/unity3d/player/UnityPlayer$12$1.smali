.class Lcom/unity3d/player/UnityPlayer$12$1;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unity3d/player/UnityPlayer$12;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$12;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 857
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$12$1;->this$1:Lcom/unity3d/player/UnityPlayer$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 859
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$12$1;->this$1:Lcom/unity3d/player/UnityPlayer$12;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$12;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$1700(Lcom/unity3d/player/UnityPlayer;)V

    .line 860
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$12$1;->this$1:Lcom/unity3d/player/UnityPlayer$12;

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$12;->this$0:Lcom/unity3d/player/UnityPlayer;

    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    return-void
.end method
