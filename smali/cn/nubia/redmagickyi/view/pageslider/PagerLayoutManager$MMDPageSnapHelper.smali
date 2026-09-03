.class Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source "PagerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMDPageSnapHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;->this$0:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;->this$0:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->access$102(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
