.class Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;
.super Landroid/os/Handler;
.source "PagerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeIdleHandler"
.end annotation


# instance fields
.field private pagePosition:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->this$0:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;-><init>(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->this$0:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->access$100(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->pagePosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->this$0:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->access$200(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;)Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->this$0:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->access$200(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;)Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->pagePosition:I

    invoke-interface {v0, p0, p1}, Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;->onPageSelected(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->removeMessages(I)V

    .line 112
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method public setPagePosition(I)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;
    .locals 0

    .line 101
    iput p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->pagePosition:I

    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->removeMessages(I)V

    .line 103
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->sendEmptyMessage(I)Z

    return-object p0
.end method
