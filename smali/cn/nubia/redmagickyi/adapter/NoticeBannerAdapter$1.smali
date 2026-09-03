.class Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$1;
.super Ljava/lang/Object;
.source "NoticeBannerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

.field final synthetic val$realPosition:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;Lcn/nubia/redmagickyi/network/bean/NoticeBean;I)V
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

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$1;->this$0:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$1;->val$bean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    iput p3, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$1;->val$realPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$1;->this$0:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->access$000(Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;)Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$1;->this$0:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->access$000(Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;)Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$1;->val$bean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    iget p0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$1;->val$realPosition:I

    invoke-interface {v0, p1, v1, p0}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;->onBannerItemClick(Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/NoticeBean;I)V

    :cond_0
    return-void
.end method
