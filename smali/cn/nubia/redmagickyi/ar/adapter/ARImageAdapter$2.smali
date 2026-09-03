.class Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$2;
.super Ljava/lang/Object;
.source "ARImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;ILcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)V
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

    .line 183
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$2;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$2;->val$position:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$2;->val$holder:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$2;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$200(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$2;->this$0:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->access$200(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$2;->val$position:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$2;->val$holder:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;

    invoke-interface {v0, p1, v1, p0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;->onItemLongClick(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
