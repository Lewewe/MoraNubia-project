.class public Lcn/nubia/redmagickyi/util/Logs;
.super Ljava/lang/Object;
.source "Logs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/Logs$MessageFormatter;,
        Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;
    }
.end annotation


# static fields
.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x5

.field public static final INFO:I = 0x3

.field private static final IS_USER:Z

.field public static LEVEL:I = 0x0

.field public static final NOTHING:I = 0x6

.field public static final SEPARATOR:Ljava/lang/String; = ","

.field public static final VERBOSE:I = 0x1

.field public static final WARN:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/redmagickyi/util/Logs;->IS_USER:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 21
    :goto_0
    sput v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    sget v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 37
    sget v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 38
    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Logs$MessageFormatter;->arrayFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 79
    sget v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 80
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    .line 73
    sget v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 74
    invoke-static {p0, p1, p3}, Lcn/nubia/redmagickyi/util/Logs$MessageFormatter;->arrayFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static getLogInfo(Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",method="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",line="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 55
    sget v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 49
    sget v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 50
    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Logs$MessageFormatter;->arrayFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static printStackTrace()V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "StackTrace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    sget v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 25
    sget v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 26
    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Logs$MessageFormatter;->arrayFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    sget v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 61
    sget v0, Lcn/nubia/redmagickyi/util/Logs;->LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 62
    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Logs$MessageFormatter;->arrayFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
