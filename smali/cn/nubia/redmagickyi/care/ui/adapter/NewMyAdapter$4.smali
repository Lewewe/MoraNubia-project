.class Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$4;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "NewMyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->ifGridLayoutManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$4;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$4;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$4;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->access$200(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$4;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->access$300(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    .line 209
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$4;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    :goto_1
    return p0
.end method
