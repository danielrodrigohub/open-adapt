.class public final Lw7/a$a;
.super Ljava/lang/Object;
.source "AdaptRestClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lw7/a;Ljava/lang/Class;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lg0/n;->c:Lg0/n;

    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_0

    const-string p2, "https://api.nike.com"

    :cond_0
    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lg0/n;->c(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
