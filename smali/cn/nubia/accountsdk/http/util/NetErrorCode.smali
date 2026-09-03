.class public final Lcn/nubia/accountsdk/http/util/NetErrorCode;
.super Ljava/lang/Object;
.source "NetErrorCode.java"


# static fields
.field public static final ACCESS_SERVER_EXCEPTION:I = 0x5dd

.field public static final ACTIVE_CHECK_LIMIT_ERROR:I = 0x7f0

.field public static final ALREADY_BIND_THIRD:I = 0x851

.field public static final AUTH_TOKENKEY_ERROR:I = 0x5e0

.field public static final CAN_NOT_DO_SAFE_CHECK_BY_EMAIL_ERROR:I = 0x83f

.field public static final CAN_NOT_DO_SAFE_CHECK_BY_MOBILE_ERROR:I = 0x840

.field public static final CHECK_BINDED_MOBILE_OR_EMAIL_ERROR:I = 0x84b

.field public static final EMAIL_ACTIVE_EXPIRE_OR_CHECK_INVALID_ERROR:I = 0x7ed

.field public static final EMAIL_EXIST_ERROR:I = 0x7d6

.field public static final EMAIL_FORMAT_ERROR:I = 0x7d4

.field public static final EMAIL_NOT_ACTIVED_ERROR:I = 0x7f2

.field public static final EMAIL_NOT_EXIST_ERROR:I = 0x7d7

.field public static final EMAIL_SEND_FAILURE_ERROR:I = 0x7ec

.field public static final EMAIL_SEND_FREQUENTLY_ERROR:I = 0x7ee

.field public static final EMAIL_SEND_TIMES_EXCEED_LIMIT_ERROR:I = 0x7f1

.field public static final ERR_DATA_FORMAT_INCORRECT:I = -0x2

.field public static final ERR_LIMIT:I = 0x853

.field public static final ERR_NETWORK_UNAVAILABLE:I = -0x1

.field public static final ERR_USER_OR_PASSWORD:I = 0x852

.field public static final FILE_SIZE_EXCEED_LIMIT_ERROR:I = 0x837

.field public static final ILLEGAL_AREA_INFO_ERROR:I = 0x84f

.field public static final IMAGECODE_EXPIRE_ERROR:I = 0x7f9

.field public static final IMAGECODE_ILLEGAL_ERROR:I = 0x7f8

.field public static final INVALID_ACCESSTOKEN_ERROR:I = 0x848

.field public static final INVALID_VERIFY_CODE_ERROR:I = 0x841

.field public static final LINK_BUSSINESS_SERVER_FAILURE_ERROR:I = 0x835

.field public static final MODIFY_PASSWORD_AUTHCODE_EXPIRE_OR_INVALID_ERROR:I = 0x7f3

.field public static final NICKNAME_FORMAT_ERROR:I = 0x84d

.field public static final NICKNAME_REPEAT_ERROR:I = 0x84e

.field public static final NOT_ALLOW_MODIFY_MOBILE_OR_EMAIL_ERROR:I = 0x83e

.field public static final NOT_ALLOW_UNBIND_ALL_RELATIONS_ERROR:I = 0x84c

.field public static final NO_ERROR:I = 0x0

.field public static final NO_THIS_TYPE_EMAIL_CHECK_ERROR:I = 0x7ef

.field public static final OLDPASSWORD_MUST_NOT_SAMEWITH_NEWPASSWORD_ERROR:I = 0x834

.field public static final PARAMS_ERROR:I = 0x5dc

.field public static final PARAMS_MUST_BE_MOBILE_OR_EMAIL_ERROR:I = 0x7e3

.field public static final PASSWORD_ERROR:I = 0x7d1

.field public static final PHONENUMBER_EXIST_ERROR:I = 0x7de

.field public static final PHONENUMBER_FORMAT_ERROR:I = 0x7dc

.field public static final PHONENUMBER_NOT_EXIST_ERROR:I = 0x7df

.field public static final REQUEST_EXTERNAL_SERVER_ERROR:I = 0x5e1

.field public static final RESERVED_EMAIL_ERROR:I = 0x7d5

.field public static final RESERVED_PHONENUMBER_ERROR:I = 0x7dd

.field public static final RESERVED_USERNAME_ERROR:I = 0x7d9

.field public static final SAFE_QUESTIONS_INFO_ERROR:I = 0x7d3

.field public static final SERVER_UNKNOW_ERROR:I = 0x5de

.field public static final SESSION_EXPIRE_ERROR:I = 0x836

.field public static final SMS_CODE_CHECK_TIMES_LIMIT_ERROR:I = 0x7eb

.field public static final SMS_CODE_EXPIRE_ERROR:I = 0x7e9

.field public static final SMS_CODE_INVALID_ERROR:I = 0x7e8

.field public static final SMS_CODE_NOT_EXIST_OR_EXPIRE_ERROR:I = 0x7ea

.field public static final SMS_SEND_FAILURE_ERROR:I = 0x7e7

.field public static final SMS_SEND_TIMES_EXCEED_LIMIT_ERROR:I = 0x7e5

.field public static final SMS_SEND_TIMES_FREQUENTLY_ERROR:I = 0x7e6

.field public static final THIRD_ACCOUNT_BIND_ALREADY_ERROR:I = 0x84a

.field public static final THIRD_ACCOUNT_NOT_BIND_ERROR:I = 0x849

.field public static final UNIQUEID_ILLEGAL_ERROR:I = 0x7e2

.field public static final UNIUQECODE_GET_FAILURE_ERROR:I = 0x7f4

.field public static final UNKNOWN_ERROR:I = 0x3e8

.field public static final UPLOAD_FILE_FAILUE_ERROR:I = 0x839

.field public static final UPLOAD_FILE_TYPE_ERROR:I = 0x838

.field public static final USERNAME_ERROR:I = 0x7d0

.field public static final USERNAME_EXIST_ERROR:I = 0x7da

.field public static final USERNAME_FORMAT_ERROR:I = 0x7d8

.field public static final USERNAME_NOT_EXIST_ERROR:I = 0x7db

.field public static final USER_NOT_ALLOW_MODIFY_ERROR:I = 0x7e1

.field public static final USER_NOT_EXIST_ERROR:I = 0x7e0

.field public static final USE_MOBILE_EMAIL_DIGITALID_LOGIN_ERROR:I = 0x850

.field private static final mErrorCodeArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/nubia/accountsdk/http/util/NetErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 86
    const-string/jumbo v2, "\u65e0\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, -0x1

    .line 87
    const-string/jumbo v2, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, -0x2

    .line 88
    const-string/jumbo v2, "\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3e8

    .line 90
    const-string/jumbo v2, "\u672a\u77e5\u7684\u7cfb\u7edf\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5dc

    .line 91
    const-string/jumbo v2, "\u53c2\u6570\u4fe1\u606f\u6709\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5dd

    .line 92
    const-string/jumbo v2, "\u670d\u52a1\u5668\u8bbf\u95ee\u53d1\u751f\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5de

    .line 93
    const-string/jumbo v2, "\u670d\u52a1\u5668\u53d1\u751f\u672a\u77e5\u7684\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5e0

    .line 94
    const-string/jumbo v2, "\u7528\u4e8e\u8ba4\u8bc1\u7684\u901a\u4fe1\u79d8\u94a5\u4fe1\u606f\u6709\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5e1

    .line 95
    const-string/jumbo v2, "\u8bf7\u6c42\u5916\u90e8\u670d\u52a1\u5668\u51fa\u9519"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d0

    .line 96
    const-string/jumbo v2, "\u7528\u6237\u540d\u6709\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d1

    .line 97
    const-string/jumbo v2, "\u9519\u8bef\u7684\u5bc6\u7801"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d3

    .line 98
    const-string/jumbo v2, "\u9519\u8bef\u7684\u5b89\u5168\u95ee\u9898\u4fe1\u606f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d4

    .line 99
    const-string/jumbo v2, "\u9519\u8bef\u7684email\u683c\u5f0f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d5

    .line 100
    const-string/jumbo v2, "\u88ab\u4fdd\u7559\u7684email"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d6

    .line 101
    const-string v2, "email\u5df2\u7ecf\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d7

    .line 102
    const-string v2, "email\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d8

    .line 103
    const-string/jumbo v2, "\u9519\u8bef\u7684\u7528\u6237\u540d\u683c\u5f0f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d9

    .line 104
    const-string/jumbo v2, "\u88ab\u4fdd\u7559\u7684\u7528\u6237\u540d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7da

    .line 105
    const-string/jumbo v2, "\u7528\u6237\u540d\u5df2\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7db

    .line 106
    const-string/jumbo v2, "\u7528\u6237\u540d\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7dc

    .line 107
    const-string/jumbo v2, "\u9519\u8bef\u7684\u7535\u8bdd\u53f7\u7801\u683c\u5f0f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7dd

    .line 108
    const-string/jumbo v2, "\u88ab\u4fdd\u7559\u7684\u7535\u8bdd\u53f7\u7801"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7de

    .line 109
    const-string/jumbo v2, "\u7535\u8bdd\u53f7\u7801\u5df2\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7df

    .line 110
    const-string/jumbo v2, "\u7535\u8bdd\u53f7\u7801\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e0

    .line 111
    const-string/jumbo v2, "\u7528\u6237\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e1

    .line 112
    const-string/jumbo v2, "\u7528\u6237\u88ab\u7981\u6b62\u4fee\u6539"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e2

    .line 113
    const-string/jumbo v2, "\u975e\u6cd5\u7684unique id\uff0c\u53ef\u80fd\u5c1a\u672a\u767b\u5f55\u6216\u8005\u8fc7\u671f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e3

    .line 114
    const-string/jumbo v2, "\u8fdb\u884c\u6821\u9a8c\u7684\u53c2\u6570\uff0c\u53ea\u80fd\u4e3a\u624b\u673a\u6216\u8005\u90ae\u7bb1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e5

    .line 115
    const-string/jumbo v2, "\u77ed\u4fe1\u53d1\u9001\u6b21\u6570\u8d85\u8fc7\u9650\u5236"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e6

    .line 116
    const-string/jumbo v2, "\u77ed\u4fe1\u53d1\u9001\u8fc7\u4e8e\u9891\u7e41"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e7

    .line 117
    const-string/jumbo v2, "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e8

    .line 118
    const-string/jumbo v2, "\u9a8c\u8bc1\u7801\u65e0\u6548"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e9

    .line 119
    const-string/jumbo v2, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8fc7\u671f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7ea

    .line 120
    const-string/jumbo v2, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u4e0d\u5b58\u5728\u6216\u8005\u8fc7\u671f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7eb

    .line 121
    const-string/jumbo v2, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u6821\u9a8c\u6b21\u6570\u8d85\u8fc7\u6700\u5927\u9650\u5236"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7ec

    .line 122
    const-string/jumbo v2, "\u90ae\u4ef6\u53d1\u9001\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7ed

    .line 123
    const-string/jumbo v2, "\u6fc0\u6d3b\u94fe\u63a5\u8fc7\u671f\u6216\u9a8c\u8bc1\u65e0\u6548"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7ee

    .line 124
    const-string/jumbo v2, "\u90ae\u4ef6\u53d1\u9001\u8fc7\u4e8e\u9891\u7e41"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7ef

    .line 125
    const-string/jumbo v2, "\u65e0\u6b64\u7c7b\u578b\u64cd\u4f5c\u90ae\u7bb1\u9a8c\u8bc1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7f0

    .line 126
    const-string/jumbo v2, "\u6fc0\u6d3b\u9a8c\u8bc1\u9519\u8bef\u8d85\u8fc7\u6700\u5927\u9650\u5236"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7f1

    .line 127
    const-string/jumbo v2, "\u90ae\u4ef6\u53d1\u9001\u6b21\u6570\u8d85\u8fc7\u9650\u5236"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7f2

    .line 128
    const-string/jumbo v2, "\u90ae\u4ef6\u672a\u6fc0\u6d3b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7f3

    .line 129
    const-string/jumbo v2, "\u4fee\u6539\u5bc6\u7801\u6388\u6743\u7801\u6821\u9a8c\u975e\u6cd5\u6216\u8fc7\u671f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7f4

    .line 130
    const-string/jumbo v2, "\u552f\u4e00\u6388\u6743\u7801\u83b7\u53d6\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7f8

    .line 131
    const-string/jumbo v2, "\u56fe\u7247\u9a8c\u8bc1\u7801\u975e\u6cd5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7f9

    .line 132
    const-string/jumbo v2, "\u56fe\u7247\u9a8c\u8bc1\u7801\u8fc7\u671f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x834

    .line 133
    const-string/jumbo v2, "\u65e7\u5bc6\u7801\u548c\u65b0\u5bc6\u7801\u4e0d\u80fd\u76f8\u540c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x835

    .line 134
    const-string/jumbo v2, "\u8fde\u63a5\u5e94\u7528\u4e1a\u52a1\u670d\u52a1\u5668\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x836

    .line 135
    const-string/jumbo v2, "\u4f1a\u8bdd\u4fe1\u606f\u5df2\u7ecf\u8fc7\u671f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x837

    .line 136
    const-string/jumbo v2, "\u6587\u4ef6\u5927\u5c0f\u8d85\u8fc7\u9650\u5b9a\u503c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x838

    .line 137
    const-string/jumbo v2, "\u4e0a\u4f20\u7684\u6587\u4ef6\u7c7b\u578b\u6709\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x839

    .line 138
    const-string/jumbo v2, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0a\u4f20"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x83e

    .line 139
    const-string/jumbo v2, "\u7528\u6237\u5c1a\u672a\u7ed1\u5b9a\u624b\u673a\u6216\u8005\u90ae\u7bb1\uff0c\u4e0d\u80fd\u4fee\u6539\u624b\u673a\u548c\u90ae\u7bb1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x83f

    .line 140
    const-string/jumbo v2, "\u7528\u6237\u5c1a\u672a\u7ed1\u5b9a\u90ae\u7bb1\uff0c\u65e0\u6cd5\u901a\u8fc7\u90ae\u7bb1\u8fdb\u884c\u5b89\u5168\u786e\u8ba4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x840

    .line 141
    const-string/jumbo v2, "\u7528\u6237\u5c1a\u672a\u7ed1\u5b9a\u624b\u673a\uff0c\u65e0\u6cd5\u901a\u8fc7\u624b\u673a\u8fdb\u884c\u5b89\u5168\u786e\u8ba4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x841

    .line 142
    const-string/jumbo v2, "\u65e0\u6548\u7684\u6743\u9650\u7801"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x848

    .line 143
    const-string/jumbo v2, "\u65e0\u6548\u7684access token\u4fe1\u606f\uff0c\u53ef\u80fd\u5df2\u7ecf\u8fc7\u671f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x849

    .line 144
    const-string/jumbo v2, "\u8be5\u7b2c\u4e09\u65b9\u5e10\u53f7\u5c1a\u672a\u7ed1\u5b9a\uff0c\u9700\u8981\u5148\u8fdb\u884c\u7ed1\u5b9a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x84a

    .line 145
    const-string/jumbo v2, "\u8be5\u7b2c\u4e09\u65b9\u5e10\u53f7\u5df2\u7ecf\u7ed1\u5b9a\u8fc7\u7528\u6237\uff0c\u65e0\u6cd5\u8fdb\u884c\u591a\u6b21\u7ed1\u5b9a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x851

    .line 146
    const-string/jumbo v2, "\u8be5\u7528\u6237\u5df2\u7ecf\u7ed1\u5b9a\u8fc7\u7b2c\u4e09\u65b9\u8d26\u53f7\uff0c\u65e0\u6cd5\u8fdb\u884c\u591a\u6b21\u7ed1\u5b9a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x84b

    .line 147
    const-string/jumbo v4, "\u8bf7\u5148\u9a8c\u8bc1\u5df2\u7ed1\u5b9a\u7684\u624b\u673a\u53f7\u6216\u8005\u90ae\u7bb1"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x84c

    .line 148
    const-string/jumbo v4, "\u5bf9\u4e8e\u5c1a\u672a\u5b8c\u5584\u624b\u673a\u548c\u90ae\u7bb1\u7684\u5e10\u53f7\uff0c\u4e0d\u5141\u8bb8\u89e3\u9664\u6240\u6709\u7684\u7ed1\u5b9a\u5173\u7cfb"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x84d

    .line 149
    const-string/jumbo v4, "\u9519\u8bef\u7684\u6635\u79f0\u683c\u5f0f"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x84e

    .line 150
    const-string/jumbo v4, "\u91cd\u590d\u7684\u6635\u79f0"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x84f

    .line 151
    const-string/jumbo v4, "\u975e\u6cd5\u7684\u533a\u57df\u4fe1\u606f\u683c\u5f0f"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x850

    .line 152
    const-string/jumbo v4, "\u8bf7\u4f7f\u7528\u90ae\u7bb1/\u624b\u673a/\u6570\u5b57ID\u8fdb\u884c\u767b\u9646"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x852

    .line 154
    const-string/jumbo v2, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x853

    .line 155
    const-string/jumbo v2, "\u5bc6\u7801\u9519\u8bef\u6b21\u6570\u592a\u591a\uff0c\u8bf7\u7a0d\u540e\u5c1d\u8bd5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrMsg(I)Ljava/lang/String;
    .locals 2

    .line 10
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    .line 11
    sget-object v1, Lcn/nubia/accountsdk/http/util/NetErrorCode;->mErrorCodeArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
