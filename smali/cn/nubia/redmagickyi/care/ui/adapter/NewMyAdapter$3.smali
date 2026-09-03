.class Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$3;
.super Ljava/lang/Object;
.source "NewMyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

.field final synthetic val$finalPosition:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;I)V
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

    .line 119
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$3;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$3;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$3;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->access$100(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 123
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$3;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->access$000(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;)Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;->onHeaderClick(Landroid/view/View;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$3;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->access$000(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;)Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$3;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->access$000(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;)Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$3;->val$finalPosition:I

    invoke-interface {v0, p1, p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;->onWifiItemClick(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method
