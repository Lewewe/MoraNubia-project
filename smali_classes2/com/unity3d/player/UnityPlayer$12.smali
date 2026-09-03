.class Lcom/unity3d/player/UnityPlayer$12;
.super Ljava/lang/Object;
.source "UnityPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/UnityPlayer;

.field final synthetic val$var1:Ljava/lang/String;

.field final synthetic val$var2:I

.field final synthetic val$var3:Z

.field final synthetic val$var4:Z

.field final synthetic val$var5:Z

.field final synthetic val$var7:Ljava/lang/String;

.field final synthetic val$var8:I

.field final synthetic val$var9:Z


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZLjava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
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

    .line 854
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$12;->this$0:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var1:Ljava/lang/String;

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var2:I

    iput-boolean p4, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var3:Z

    iput-boolean p5, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var4:Z

    iput-boolean p6, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var5:Z

    iput-object p7, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var7:Ljava/lang/String;

    iput p8, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var8:I

    iput-boolean p9, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var9:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 856
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12;->this$0:Lcom/unity3d/player/UnityPlayer;

    new-instance v12, Lcom/unity3d/player/l;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$12;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->access$1600(Lcom/unity3d/player/UnityPlayer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer$12;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var1:Ljava/lang/String;

    iget v5, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var2:I

    iget-boolean v6, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var3:Z

    iget-boolean v7, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var4:Z

    iget-boolean v8, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var5:Z

    iget-object v9, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var7:Ljava/lang/String;

    iget v10, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var8:I

    iget-boolean v11, p0, Lcom/unity3d/player/UnityPlayer$12;->val$var9:Z

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/unity3d/player/l;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZLjava/lang/String;IZ)V

    iput-object v12, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/l;

    .line 857
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/l;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$12$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$12$1;-><init>(Lcom/unity3d/player/UnityPlayer$12;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/l;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 863
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12;->this$0:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->mSoftInputDialog:Lcom/unity3d/player/l;

    invoke-virtual {v0}, Lcom/unity3d/player/l;->show()V

    .line 864
    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$12;->this$0:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayer;->access$1800(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method
