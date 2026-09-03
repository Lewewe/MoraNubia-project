.class Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$2;
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


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$2;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$2;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->access$000(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;)Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$2;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->access$000(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;)Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;->onHeaderClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
