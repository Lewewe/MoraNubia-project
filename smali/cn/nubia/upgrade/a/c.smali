.class Lcn/nubia/upgrade/a/c;
.super Ljava/lang/Object;
.source "HwId.java"


# static fields
.field private static a:Lcn/nubia/upgrade/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/upgrade/a/a;

    invoke-direct {v0}, Lcn/nubia/upgrade/a/a;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 10

    .line 44
    sget-object v0, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    const-class v1, Landroid/os/Build;

    const-class v2, Landroid/os/Build;

    const-string v3, "MANUFACTURER"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    sget-object v1, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    const-class v2, Landroid/os/Build;

    const-class v3, Landroid/os/Build;

    const-string v4, "MODEL"

    invoke-virtual {v1, v2, v3, v4}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    sget-object v2, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    const-class v3, Landroid/os/Build;

    const-class v4, Landroid/os/Build;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "getSerial"

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    sget-object v2, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    const-string v3, "android.os.SystemProperties"

    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 53
    sget-object v4, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    const-class v8, Ljava/lang/String;

    const-string v9, "ro.serialno"

    const-string v7, "get"

    move-object v5, v6

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1
    const-class v6, Landroid/telephony/TelephonyManager;

    const-string v0, "phone"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 6
    sget-object v0, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "getPhoneCount"

    move-object v1, v6

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v7, :cond_0

    goto :goto_0

    :cond_0
    move v8, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v7

    :goto_1
    const/4 v9, 0x0

    move v10, v9

    :goto_2
    if-ge v10, v8, :cond_2

    .line 16
    sget-object v0, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v3, "getImei"

    move-object v1, v6

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-static {v0, p1, p2}, Lcn/nubia/upgrade/a/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 19
    :cond_2
    sget-object v0, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "getImei"

    move-object v1, v6

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    invoke-static {v0, p1, p2}, Lcn/nubia/upgrade/a/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move v10, v9

    :goto_3
    if-ge v10, v8, :cond_3

    .line 24
    sget-object v0, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v3, "getMeid"

    move-object v1, v6

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-static {v0, p1, p2}, Lcn/nubia/upgrade/a/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 27
    :cond_3
    sget-object v0, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "getMeid"

    move-object v1, v6

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    invoke-static {v0, p1, p2}, Lcn/nubia/upgrade/a/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_4
    if-ge v9, v8, :cond_4

    .line 32
    sget-object v0, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v3, "getDeviceId"

    move-object v1, v6

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-static {v0, p1, p2}, Lcn/nubia/upgrade/a/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 35
    :cond_4
    sget-object v0, Lcn/nubia/upgrade/a/c;->a:Lcn/nubia/upgrade/a/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "getDeviceId"

    move-object v1, v6

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/a/a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 36
    invoke-static {p0, p1, p2}, Lcn/nubia/upgrade/a/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    if-eqz p1, :cond_5

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v7, :cond_5

    .line 40
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v7, :cond_6

    .line 43
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcn/nubia/upgrade/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 p1, 0x12

    if-eq v0, p1, :cond_1

    const/16 p1, 0x13

    if-eq v0, p1, :cond_1

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid mobile id format "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HwId"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 86
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 87
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 95
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 96
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 103
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 104
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method
