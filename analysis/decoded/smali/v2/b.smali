.class public final Lv2/b;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lv2/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/b$d;,
        Lv2/b$a;,
        Lv2/b$c;,
        Lv2/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv2/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final a:Lv2/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv2/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/b$b<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/b;->a:Lv2/b$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILp2/h;)Lv2/n$a;
    .locals 1

    .line 1
    check-cast p1, [B

    .line 2
    new-instance p2, Lv2/n$a;

    new-instance p3, Lk3/d;

    invoke-direct {p3, p1}, Lk3/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lv2/b$c;

    iget-object v0, p0, Lv2/b;->a:Lv2/b$b;

    invoke-direct {p4, p1, v0}, Lv2/b$c;-><init>([BLv2/b$b;)V

    invoke-direct {p2, p3, p4}, Lv2/n$a;-><init>(Lp2/f;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, [B

    const/4 p1, 0x1

    return p1
.end method
