.class Lcom/unity3d/player/l$3;
.super Landroid/widget/EditText;
.source "l.java"


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
.method constructor <init>(Lcom/unity3d/player/l;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/unity3d/player/l$3;->this$0:Lcom/unity3d/player/l;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 194
    iget-object p0, p0, Lcom/unity3d/player/l$3;->this$0:Lcom/unity3d/player/l;

    invoke-static {p0}, Lcom/unity3d/player/l;->access$400(Lcom/unity3d/player/l;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/unity3d/player/l;->access$500(Lcom/unity3d/player/l;Ljava/lang/String;Z)V

    return v1

    :cond_0
    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method protected final onSelectionChanged(II)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/unity3d/player/l$3;->this$0:Lcom/unity3d/player/l;

    invoke-static {p0}, Lcom/unity3d/player/l;->access$200(Lcom/unity3d/player/l;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p0

    sub-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputSelection(II)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 202
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/unity3d/player/l$3;->this$0:Lcom/unity3d/player/l;

    invoke-static {p1}, Lcom/unity3d/player/l;->access$600(Lcom/unity3d/player/l;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
