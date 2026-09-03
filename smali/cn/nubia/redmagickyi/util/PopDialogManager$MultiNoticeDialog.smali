.class Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;
.super Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;
.source "PopDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/PopDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiNoticeDialog"
.end annotation


# instance fields
.field private isDontRemindStateChangedToOn:Z

.field private noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

.field final synthetic this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/util/PopDialogManager;Landroid/content/Context;Lcn/nubia/redmagickyi/network/bean/NoticeBean;Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;

    .line 222
    invoke-direct {p0, p2, p3, p4}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/network/bean/NoticeBean;Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;)V

    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->isDontRemindStateChangedToOn:Z

    .line 223
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;)Z
    .locals 0

    .line 216
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->isDontRemindStateChangedToOn:Z

    return p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;Z)Z
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->isDontRemindStateChangedToOn:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;)Lcn/nubia/redmagickyi/network/bean/NoticeBean;
    .locals 0

    .line 216
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$MultiNoticeDialog;->noticeBean:Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    return-object p0
.end method
