.class Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;
.super Lcn/nubia/redmagickyi/crop/base/BaseDialog;
.source "EditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/view/EditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarnDialog"
.end annotation


# instance fields
.field public tvLoadingText:Landroid/widget/TextView;

.field public warn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 493
    sget v0, Lcn/nubia/redmagickyi/main/R$style;->CustomDialog2:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 494
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;->warn:I

    return-void
.end method


# virtual methods
.method public final getContentView()I
    .locals 0

    .line 499
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->layout_warning_editor:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 1

    .line 504
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;->warn:I

    if-nez p1, :cond_0

    .line 505
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->warn_text:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 506
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->player_limit_30s:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 508
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->warn_text:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 509
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->player_limit_2s:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 1

    .line 515
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v0, -0x2

    .line 517
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 518
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 519
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
