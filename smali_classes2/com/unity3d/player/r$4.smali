.class Lcom/unity3d/player/r$4;
.super Ljava/lang/Object;
.source "r.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/r;->a(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/r$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/r;


# direct methods
.method constructor <init>(Lcom/unity3d/player/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/unity3d/player/r$4;->this$0:Lcom/unity3d/player/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/unity3d/player/r$4;->this$0:Lcom/unity3d/player/r;

    invoke-static {v0}, Lcom/unity3d/player/r;->access$600(Lcom/unity3d/player/r;)V

    .line 101
    iget-object p0, p0, Lcom/unity3d/player/r$4;->this$0:Lcom/unity3d/player/r;

    invoke-static {p0}, Lcom/unity3d/player/r;->access$700(Lcom/unity3d/player/r;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    return-void
.end method
