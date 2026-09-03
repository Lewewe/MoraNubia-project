.class Lcn/nubia/redmagickyi/util/PopDialogManager$3;
.super Ljava/lang/Object;
.source "PopDialogManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/PopDialogManager;->initNoticeDialogList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/PopDialogManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$3;->this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/redmagickyi/network/bean/NoticeBean;Lcn/nubia/redmagickyi/network/bean/NoticeBean;)I
    .locals 0

    .line 138
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getType()I

    move-result p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getType()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    check-cast p1, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    check-cast p2, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/PopDialogManager$3;->compare(Lcn/nubia/redmagickyi/network/bean/NoticeBean;Lcn/nubia/redmagickyi/network/bean/NoticeBean;)I

    move-result p0

    return p0
.end method
