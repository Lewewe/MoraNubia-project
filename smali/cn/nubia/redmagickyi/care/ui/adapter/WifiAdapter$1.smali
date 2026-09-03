.class Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$1;
.super Ljava/lang/Object;
.source "WifiAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$1;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$1;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->access$000(Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;)Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$WifiClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$1;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->access$000(Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;)Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$WifiClickInterface;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$1;->val$position:I

    invoke-interface {v0, p1, p0}, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$WifiClickInterface;->onWifiItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
