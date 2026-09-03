.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;
.super Lcn/nubia/redmagickyi/view/gallery/CenterScrollListener;
.source "ChangeSkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkinItemSelectionListener"
.end annotation


# instance fields
.field centerPosition:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1247
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/gallery/CenterScrollListener;-><init>()V

    .line 1248
    iput p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;->centerPosition:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1253
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/view/gallery/CenterScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 1255
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1600(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getCenterItemPosition()I

    move-result p1

    .line 1256
    iget p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;->centerPosition:I

    if-eq p2, p1, :cond_0

    .line 1257
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateUI(Z)V

    .line 1258
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    move-result-object p2

    iget v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;->centerPosition:I

    invoke-virtual {p2, v0, p1}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->notifyItemChanged(II)V

    .line 1259
    iput p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;->centerPosition:I

    .line 1260
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$SkinItemSelectionListener;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$900(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$600(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;IZ)V

    :cond_0
    return-void
.end method
