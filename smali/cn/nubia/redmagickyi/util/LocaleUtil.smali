.class public Lcn/nubia/redmagickyi/util/LocaleUtil;
.super Ljava/lang/Object;
.source "LocaleUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    }
.end annotation


# static fields
.field private static displayLocale:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

.field private static numberFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 26
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Arabic:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-ne v0, v1, :cond_0

    .line 27
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Arabic:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil;->numberFormat:Ljava/text/NumberFormat;

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    .locals 8

    const-class v0, Lcn/nubia/redmagickyi/util/LocaleUtil;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil;->displayLocale:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-nez v1, :cond_9

    .line 120
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 123
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->values()[Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 124
    iget-boolean v6, v5, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->isSupported:Z

    if-eqz v6, :cond_5

    .line 125
    iget-object v6, v5, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 126
    iget-object v2, v5, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v3, v3, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 127
    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v2, v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    sput-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil;->displayLocale:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 129
    :cond_0
    :try_start_1
    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_TW:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v2, v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_TW:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    sput-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil;->displayLocale:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 131
    :cond_1
    :try_start_2
    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v2, v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7b80\u4f53"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    sput-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil;->displayLocale:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 137
    :cond_2
    :try_start_3
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    sput-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil;->displayLocale:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    .line 140
    :cond_3
    :try_start_4
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    sput-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil;->displayLocale:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    .line 143
    :cond_4
    :try_start_5
    sput-object v5, Lcn/nubia/redmagickyi/util/LocaleUtil;->displayLocale:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 147
    :cond_6
    :try_start_6
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->English:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    sput-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil;->displayLocale:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-object v1

    .line 149
    :cond_7
    :try_start_7
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->English:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return-object v1

    .line 152
    :cond_8
    :try_start_8
    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    sput-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil;->displayLocale:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v0

    return-object v1

    .line 155
    :cond_9
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSystemLanguageName()Ljava/lang/String;
    .locals 2

    .line 43
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemLanguageTag()Ljava/lang/String;
    .locals 2

    .line 58
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnAreaLanguage()Z
    .locals 2

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->English:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLayoutRTLNubia()Z
    .locals 2

    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isStringFromDefaultValues(Landroid/content/Context;ILjava/util/Locale;)Z
    .locals 4

    const/4 v0, 0x1

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 85
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 89
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const-string v3, "en"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 95
    :cond_0
    const-string/jumbo v3, "zh"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 101
    :cond_1
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 102
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 104
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 106
    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :catch_0
    :goto_0
    return v0
.end method

.method public static isZhAreaLanguage()Z
    .locals 2

    .line 75
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
