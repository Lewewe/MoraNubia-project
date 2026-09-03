.class Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager$1;
.super Ljava/lang/Object;
.source "ReMagicAlarmDataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->datasSort(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager$1;->this$0:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)I
    .locals 0

    .line 163
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->StringToTimeFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->StringToTimeFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :catch_0
    move-exception p0

    .line 165
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
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

    .line 159
    check-cast p1, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    check-cast p2, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager$1;->compare(Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;)I

    move-result p0

    return p0
.end method
