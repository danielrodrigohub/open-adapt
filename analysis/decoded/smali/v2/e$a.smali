.class public Lv2/e$a;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lv2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv2/o<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lv2/e$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/e$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv2/e$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/e$d<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/e$a;->a:Lv2/e$d;

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
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    new-instance p1, Lv2/e;

    iget-object v0, p0, Lv2/e$a;->a:Lv2/e$d;

    invoke-direct {p1, v0}, Lv2/e;-><init>(Lv2/e$d;)V

    return-object p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
