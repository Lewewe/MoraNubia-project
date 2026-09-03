.class Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;
.super Ljava/lang/Object;
.source "AccountUserCenterActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->selectDatePickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcn/nubia/redmagickyi/user/widget/DatePickerView;III)V
    .locals 5

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 365
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 366
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    .line 367
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 368
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    .line 369
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v3, 0x3

    .line 370
    const-string v4, "-"

    if-ge p2, v1, :cond_0

    .line 371
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$500(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, v3, p2}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->setUserInfo(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    if-ge p3, v2, :cond_1

    .line 374
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$600(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, v3, p2}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->setUserInfo(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    if-ne p3, v2, :cond_2

    if-gt p4, p1, :cond_2

    .line 377
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;->access$700(Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;)Lcn/nubia/redmagickyi/user/base/BasePresenter;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, v3, p2}, Lcn/nubia/redmagickyi/user/presenter/AccountUserCenterPresenter;->setUserInfo(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity$6;->this$0:Lcn/nubia/redmagickyi/user/ui/AccountUserCenterActivity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->can_not_set_future_time:I

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :goto_0
    return-void
.end method
