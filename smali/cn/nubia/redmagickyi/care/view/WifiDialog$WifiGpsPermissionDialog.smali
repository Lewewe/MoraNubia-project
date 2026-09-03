.class Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/view/WifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiGpsPermissionDialog"
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnUpdate:Landroid/widget/Button;

.field private isUpdateClicked:Z

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private onGCommitListener:Lcn/nubia/redmagickyi/care/view/WifiDialog$OnGoCommitListener;

.field final synthetic this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

.field private tvContent:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/care/view/WifiDialog;Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnGoCommitListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    .line 273
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 274
    iput-object p3, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 275
    iput-object p4, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->onGCommitListener:Lcn/nubia/redmagickyi/care/view/WifiDialog$OnGoCommitListener;

    .line 276
    invoke-direct {p0, p5}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->initView(Ljava/lang/String;)V

    return-void
.end method

.method private initView(Ljava/lang/String;)V
    .locals 2

    .line 288
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->tvTitle:Landroid/widget/TextView;

    .line 289
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->request_bglocation_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 290
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->tvContent:Landroid/widget/TextView;

    .line 291
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 293
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->btnCancel:Landroid/widget/Button;

    .line 295
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 296
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->btnCancel:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 297
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->btnUpdate:Landroid/widget/Button;

    .line 299
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 300
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 301
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 318
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 281
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_request_bglocation_permission:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 307
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-eq p1, v0, :cond_1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    if-ne p1, v0, :cond_2

    .line 310
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->onGCommitListener:Lcn/nubia/redmagickyi/care/view/WifiDialog$OnGoCommitListener;

    if-eqz p0, :cond_2

    .line 311
    invoke-interface {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$OnGoCommitListener;->onCommit()V

    goto :goto_1

    .line 308
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->isUpdateClicked:Z

    .line 324
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
