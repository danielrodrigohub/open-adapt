.class public final Lv2/d$c;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lv2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv2/o<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lv2/d$c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/d$a<",
            "Ljava/io/InputStream;",
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
    new-instance v0, Lv2/d$c$a;

    invoke-direct {v0}, Lv2/d$c$a;-><init>()V

    iput-object v0, p0, Lv2/d$c;->a:Lv2/d$c$a;

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
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lv2/d;

    iget-object v0, p0, Lv2/d$c;->a:Lv2/d$c$a;

    invoke-direct {p1, v0}, Lv2/d;-><init>(Lv2/d$a;)V

    return-object p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
