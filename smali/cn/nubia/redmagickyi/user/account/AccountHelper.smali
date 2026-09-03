.class public Lcn/nubia/redmagickyi/user/account/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsgId(II)I
    .locals 1

    const/16 v0, 0x5e0

    if-eq p0, v0, :cond_6

    const/16 v0, 0x5e1

    if-eq p0, v0, :cond_6

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_5

    const/16 v0, 0x7d1

    if-eq p0, v0, :cond_4

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_3

    const/16 v0, 0x7f1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x850

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    return p1

    .line 73
    :pswitch_0
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->update_avatar_fail:I

    return p0

    .line 69
    :pswitch_1
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->account_token_expired:I

    return p0

    .line 59
    :pswitch_2
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->cache_code_error:I

    return p0

    .line 55
    :pswitch_3
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->send_ems_failed:I

    return p0

    .line 53
    :pswitch_4
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->send_ems_high_frequency:I

    return p0

    .line 51
    :pswitch_5
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->send_ems_number_max:I

    return p0

    .line 48
    :pswitch_6
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->user_not_already:I

    return p0

    .line 46
    :pswitch_7
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->phone_number_no_register_error:I

    return p0

    .line 44
    :pswitch_8
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->phone_number_register_already:I

    return p0

    .line 41
    :pswitch_9
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->section_register_by_mobile_number_error:I

    return p0

    .line 39
    :pswitch_a
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->user_name_not_already:I

    return p0

    .line 37
    :pswitch_b
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->user_name_register_already:I

    return p0

    .line 34
    :pswitch_c
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->login_account_input_error:I

    return p0

    .line 32
    :pswitch_d
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->email_no_register_error:I

    return p0

    .line 30
    :pswitch_e
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->email_already_register:I

    return p0

    .line 27
    :pswitch_f
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->section_register_by_email_email_error:I

    return p0

    .line 25
    :pswitch_10
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->safe_answer_error:I

    return p0

    .line 14
    :pswitch_11
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->param_error:I

    return p0

    .line 67
    :cond_0
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->cache_code_error:I

    return p0

    .line 75
    :cond_1
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->login_account_input_error:I

    return p0

    .line 64
    :cond_2
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->send_email_high_frequency:I

    return p0

    .line 62
    :cond_3
    :pswitch_12
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->send_email_failed:I

    return p0

    .line 23
    :cond_4
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->password_error:I

    return p0

    .line 21
    :cond_5
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->account_error:I

    return p0

    .line 19
    :cond_6
    :pswitch_13
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->system_error:I

    return p0

    :pswitch_data_0
    .packed-switch 0x5dc
        :pswitch_11
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d3
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x836
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
