.class Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$2;
.super Ljava/lang/Object;
.source "ScenceCareSetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$2;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$2;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$000(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 174
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$2;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$100(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$2;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$100(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 177
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$2;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$100(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$2;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$000(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 181
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$2;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$000(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
