.class Lcom/unity3d/player/l$4;
.super Ljava/lang/Object;
.source "l.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/l;->createSoftInputView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/l;


# direct methods
.method constructor <init>(Lcom/unity3d/player/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/unity3d/player/l$4;->this$0:Lcom/unity3d/player/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    .line 230
    iget-object p0, p0, Lcom/unity3d/player/l$4;->this$0:Lcom/unity3d/player/l;

    invoke-static {p0}, Lcom/unity3d/player/l;->access$400(Lcom/unity3d/player/l;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/unity3d/player/l;->access$500(Lcom/unity3d/player/l;Ljava/lang/String;Z)V

    :cond_0
    return p3
.end method
