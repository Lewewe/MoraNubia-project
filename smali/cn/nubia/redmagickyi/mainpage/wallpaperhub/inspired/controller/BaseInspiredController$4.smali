.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$4;
.super Ljava/lang/Object;
.source "BaseInspiredController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->onMergeComplete(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$4;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;)I
    .locals 0

    .line 165
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isNewAdd()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isNewAdd()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isNewAdd()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isNewAdd()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

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

    .line 162
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;

    check-cast p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$4;->compare(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;)I

    move-result p0

    return p0
.end method
