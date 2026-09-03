.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$11;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initActionAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

.field final synthetic val$actionRecycleView:Landroid/widget/LinearLayout;

.field final synthetic val$skinRecycleView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
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

    .line 599
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$11;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$11;->val$actionRecycleView:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$11;->val$skinRecycleView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 602
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->radio_skin:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p2, p1, :cond_1

    .line 603
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$11;->val$actionRecycleView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 606
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$11;->val$skinRecycleView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    .line 607
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 609
    :cond_1
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->radio_action:I

    if-ne p2, p1, :cond_3

    .line 610
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$11;->val$actionRecycleView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 611
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 613
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$11;->val$skinRecycleView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    .line 614
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
