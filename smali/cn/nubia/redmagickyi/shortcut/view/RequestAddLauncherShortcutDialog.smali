.class public Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "RequestAddLauncherShortcutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnUpdate:Landroid/widget/Button;

.field private isUpdateClicked:Z

.field private onDismissListener:Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog$OnDismissListener;

.field private tvContent:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog$OnDismissListener;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->onDismissListener:Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog$OnDismissListener;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->onDismissListener:Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 79
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->isUpdateClicked:Z

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog$OnDismissListener;->onDismiss(Z)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 30
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_request_bglocation_permission:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 3

    .line 35
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->tvTitle:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->shortcut_add_redmagickyi_launcher_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 38
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->tvContent:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->shortcut_add_redmagickyi_launcher:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->btnCancel:Landroid/widget/Button;

    .line 42
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->shortcut_add_redmagickyi_launcher_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->btnCancel:Landroid/widget/Button;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->btnCancel:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 45
    iget-object p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->btnUpdate:Landroid/widget/Button;

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->shortcut_add_redmagickyi_launcher_commit:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->btnUpdate:Landroid/widget/Button;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    iget-object p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 50
    iget-object p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 56
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-eq p1, v0, :cond_1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->isUpdateClicked:Z

    .line 60
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->dismiss()V

    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->isUpdateClicked:Z

    .line 72
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
