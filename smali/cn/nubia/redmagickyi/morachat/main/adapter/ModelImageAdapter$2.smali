.class Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$2;
.super Ljava/lang/Object;
.source "ModelImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;ILcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;)V
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

    .line 132
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$2;->val$position:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$2;->val$holder:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$2;->val$position:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$2;->val$holder:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;

    invoke-interface {v0, p1, v1, p0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;->onItemLongClick(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
