.class public final Lv2/d;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lv2/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/d$c;,
        Lv2/d$b;,
        Lv2/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv2/n<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lv2/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/d$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv2/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/d$a<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/d;->a:Lv2/d$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILp2/h;)Lv2/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lp2/h;",
            ")",
            "Lv2/n$a<",
            "TData;>;"
        }
    .end annotation

    .line 1
    new-instance p2, Lv2/n$a;

    new-instance p3, Lk3/d;

    invoke-direct {p3, p1}, Lk3/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lv2/d$b;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lv2/d;->a:Lv2/d$a;

    invoke-direct {p4, p1, v0}, Lv2/d$b;-><init>(Ljava/lang/String;Lv2/d$a;)V

    invoke-direct {p2, p3, p4}, Lv2/n$a;-><init>(Lp2/f;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
