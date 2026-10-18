.class public abstract Lv9/k;
.super Ljava/lang/Object;
.source "AdaptKitDeviceRequest.kt"


# instance fields
.field public final a:Lfb/c;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v1, "this::class.java.annotations"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    const-string v5, "<this>"

    .line 4
    invoke-static {v4, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "this as java.lang.annota\u2026otation).annotationType()"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v5}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v5

    .line 7
    const-class v6, Lv9/n;

    invoke-static {v6}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v6

    invoke-static {v5, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 8
    :goto_1
    instance-of v0, v4, Lv9/n;

    if-eqz v0, :cond_2

    move-object v3, v4

    check-cast v3, Lv9/n;

    :cond_2
    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v3}, Lv9/n;->minimumFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lfb/c;

    invoke-direct {v1, v0}, Lfb/c;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_3
    new-instance v1, Lfb/c;

    const-string v0, "1.1.0"

    invoke-direct {v1, v0}, Lfb/c;-><init>(Ljava/lang/String;)V

    .line 11
    :goto_2
    iput-object v1, p0, Lv9/k;->a:Lfb/c;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
