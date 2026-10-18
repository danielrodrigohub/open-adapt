.class public final Lw2/a$a;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lv2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv2/o<",
        "Lv2/f;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lv2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/m<",
            "Lv2/f;",
            "Lv2/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv2/m;

    invoke-direct {v0}, Lv2/m;-><init>()V

    iput-object v0, p0, Lw2/a$a;->a:Lv2/m;

    return-void
.end method


# virtual methods
.method public final b(Lv2/r;)Lv2/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/r;",
            ")",
            "Lv2/n<",
            "Lv2/f;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lw2/a;

    iget-object v0, p0, Lw2/a$a;->a:Lv2/m;

    invoke-direct {p1, v0}, Lw2/a;-><init>(Lv2/m;)V

    return-object p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
